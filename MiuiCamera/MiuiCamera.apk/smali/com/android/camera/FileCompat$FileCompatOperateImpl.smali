.class public interface abstract Lcom/android/camera/FileCompat$FileCompatOperateImpl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileCompatOperateImpl"
.end annotation


# virtual methods
.method public abstract copyFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createNewFile(Ljava/lang/String;)Z
.end method

.method public abstract createNewFileFixPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract createNewFileWrapper(Ljava/lang/String;)Lcom/android/camera/FileCompat$FileWrapper;
.end method

.method public abstract deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract exists(Ljava/lang/String;)Z
.end method

.method public abstract getFileOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
.end method

.method public abstract getParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract mkdirs(Ljava/lang/String;)Z
.end method

.method public abstract removeDocumentFileForPath(Ljava/lang/String;)V
.end method

.method public abstract renameFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method
