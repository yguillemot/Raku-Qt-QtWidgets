
# 
# This file has been automatically generated by RaQt_maker V0.0.7.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QDialog:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QWidget:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQWidget:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQFileDialog:ver<0.0.7>:auth<zef:yguillemot>:api<2>;



class QFileDialog:ver<0.0.7>:auth<zef:yguillemot>:api<2>
    is QDialog
    is QtObject
    does RQFileDialog
    is export {

    enum Option (
        ShowDirsOnly => 1,
        DontResolveSymlinks => 2,
        DontConfirmOverwrite => 4,
        DontUseSheet => 8,
        DontUseNativeDialog => 16,
        ReadOnly => 32,
        HideNameFilterDetails => 64,
        DontUseCustomDirectoryIcons => 128,
    );
    our sub Options($e? = 0 --> Int ) is export { $e };

    submethod new(|capture) is hidden-from-backtrace {
        unimplementedCtor("QFileDialog");
    }


    multi method getOpenFileName(
        RQWidget $parent = (RQWidget), 
        Str $caption = "", 
        Str $dir = "", 
        Str $filter = "" 
        --> Str)
    {
        my Pointer $retBuffer = QWStrBufferAlloc;
        
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        QWQFileDialoggetOpenFileName(
            $retBuffer,
            $a1, 
            $caption, 
            $dir,
            $filter, 
            QWInt2Pointer(0), 
            Options());
            
        my Str $returnedString = QWStrBufferRead($retBuffer);
        QWStrBufferFree($retBuffer);
        
        return $returnedString;
    }


    multi method getOpenFileName(
        RQWidget $parent, 
        Str $caption, 
        Str $dir, 
        Str $filter, 
        Str $selectedFilter is rw, 
        Int $options = Options() 
        --> Str)
    {
        my Pointer $retBuffer = QWStrBufferAlloc;
        
        my Pointer $sfBuffer;
        if $selectedFilter !=== (Str) {
            $sfBuffer = QWStrBufferAlloc;
            QWStrBufferWrite($sfBuffer, $selectedFilter);
        } else {
            $sfBuffer = QWInt2Pointer(0);
        }

        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        QWQFileDialoggetOpenFileName(
            $retBuffer,
            $a1, 
            $caption, 
            $dir,
            $filter, 
            $sfBuffer, 
            $options);
            
        if $selectedFilter !=== (Str) {
            $selectedFilter = QWStrBufferRead($sfBuffer);
            QWStrBufferFree($sfBuffer);
        }

        my Str $returnedString = QWStrBufferRead($retBuffer);
        QWStrBufferFree($retBuffer);

        return $returnedString;
    }



    multi method getSaveFileName(
        RQWidget $parent = (RQWidget), 
        Str $caption = "", 
        Str $dir = "", 
        Str $filter = "" 
        --> Str)
    {
        my Pointer $retBuffer = QWStrBufferAlloc;

        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        QWQFileDialoggetSaveFileName(
            $retBuffer,
            $a1, 
            $caption, 
            $dir,
            $filter, 
            QWInt2Pointer(0),  
            Options());
            
        my Str $returnedString = QWStrBufferRead($retBuffer);
        QWStrBufferFree($retBuffer);
        
        return $returnedString;
    }


    multi method getSaveFileName(
        RQWidget $parent, 
        Str $caption, 
        Str $dir, 
        Str $filter, 
        Str $selectedFilter is rw, 
        Int $options = Options() 
        --> Str)
    {
        my Pointer $retBuffer = QWStrBufferAlloc;
        
        my Pointer $sfBuffer;
        if $selectedFilter !=== (Str) {
            $sfBuffer = QWStrBufferAlloc;
            QWStrBufferWrite($sfBuffer, $selectedFilter);
        } else {
            $sfBuffer = QWInt2Pointer(0);
        }

        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        QWQFileDialoggetSaveFileName(
            $retBuffer,
            $a1, 
            $caption, 
            $dir,
            $filter, 
            $sfBuffer,
            $options);

        if $selectedFilter !=== (Str) {
            $selectedFilter = QWStrBufferRead($sfBuffer);
            QWStrBufferFree($sfBuffer);
        }

        my Str $returnedString = QWStrBufferRead($retBuffer);
        QWStrBufferFree($retBuffer);
            
        return $returnedString;
    }


}



sub QWQFileDialoggetOpenFileName(Pointer, 
                                 Pointer, Str, Str, Str, Pointer, int32)
        is native(&libwrapper) { * }


sub QWQFileDialoggetSaveFileName(Pointer,
                                 Pointer, Str, Str, Str, Pointer, int32)
        is native(&libwrapper) { * }

