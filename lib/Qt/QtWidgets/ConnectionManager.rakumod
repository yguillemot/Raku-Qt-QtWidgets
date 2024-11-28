
# 
# This file has been automatically generated by RaQt_maker V0.0.6.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 



use Qt::QtWidgets:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;


class ConnectionsManager:ver<0.0.6>:auth<zef:yguillemot>:api<2> {

    # key = connection_Id
    # value = reference to the object
    has %.objs is rw;
    my $lastConnId = 0;     # Counter generating the Ids
    has Semaphore $!objLock;

    # key = srcObjId ~ signalName ~ signalSignature
    # value = How many times a signal is connected
    has %!sigConn;          
    has Semaphore $!sigLock;

    # key = event id
    # value = data object (data, count)
    has %!sigData;
    my $lastEventId = 0;     # Counter generating the Ids
    has Semaphore $!dataLock;
    
    
    submethod TWEAK {
        $!objLock = Semaphore.new(1);
        $!sigLock = Semaphore.new(1);
        $!dataLock = Semaphore.new(1);
    }

    method dump {
        say "CM OBJS :";
        for %.objs.kv -> $x, $y {
            say "   $x :\t$y", "\t 0x", QWPointer2Int($y.address).base(16);
            $y.display;
        }
        say "CM SIGCONN :";
        for %!sigConn.kv -> $x, $y {
            say "   $x :\t$y";
        }
#          say "CM SIGDATA :";
#         for %!sigConn.kv -> $x, $y {
#             say "   $x :\t$y";
#         }
    }

    method addSignalConnection($signalKey)
    {
        $!sigLock.acquire;
            if %!sigConn{$signalKey}:exists {
                %!sigConn{$signalKey}++;
            } else {
                %!sigConn{$signalKey} = 1;
            }
        $!sigLock.release;
    }

    method rmSignalConnection($signalKey)
    {
        $!sigLock.acquire;
            if %!sigConn{$signalKey}:exists && %!sigConn{$signalKey} != 0 {
                %!sigConn{$signalKey}--;
            } else {
                note "Can't remove non-existent connection \"",
                                                        $signalKey, "\" ";
            }
        $!sigLock.release;
    }

    method signalConnections($signalKey) returns Int {
        # say '$CM.signalConnections key=', $signalKey;
        my $val;
        $!sigLock.acquire;
            if %!sigConn{$signalKey}:exists {
                $val = %!sigConn{$signalKey};
            } else {
                $val = 0;
            }
        $!sigLock.release;
        return $val;
    }


    # Create an object identifier and store it in a list
    method addObj(QtObject $obj) returns Int {
        $!objLock.acquire;
            %!objs{++$lastConnId} = $obj;
        $!objLock.release;
        return $lastConnId;
    }
    
    # Remove an identified object from the list
    method removeObj(Int $id) {
        $!objLock.acquire;
            if %!objs{$id}:exists {
                %!objs{$id}:delete;
            }
        $!objLock.release;
        return $lastConnId;
    }


    class Data
    {
        has Capture $.data;
        has Int $.count is rw;
    }


    method addData (Capture $data, Int $count) returns Int
    {
        $!dataLock.acquire;
            my $id = ++$lastEventId;
            %!sigData{$id} = Data.new(data => $data, count => $count);
        $!dataLock.release;
        return $id;
    }

    method getData(Int $id) # returns (Capture, Bool) # HOW TO DECLARE IT ???
    {
        # say "getData : id = $id";
    
        my @r;
        $!dataLock.acquire;
            if %!sigData{$id}:exists {
                my Int $c = %!sigData{$id}.count;
                my Capture $d = %!sigData{$id}.data;
                $c--;
                if $c {
                    %!sigData{$id}.count = $c;
                } else {
                    %!sigData{$id}:delete;
                }
                @r = ($d, True);
            } else {
                @r = (Nil, False);
            }
        $!dataLock.release;
        return @r;
    }
}





