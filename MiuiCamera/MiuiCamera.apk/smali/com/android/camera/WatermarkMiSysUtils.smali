.class public Lcom/android/camera/WatermarkMiSysUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CAMERA_FILE_DIR:Ljava/lang/String; = "/mnt/vendor/persist/camera/"

.field public static final TAG:Ljava/lang/String; = "WatermarkMiSysUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eraseFile(Ljava/lang/String;)I
    .locals 7

    const-string v0, "WatermarkMiSysUtils"

    const-string v1, "/mnt/vendor/persist/camera/"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->getService(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;->getService(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v4, v3

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v2, -0x1

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v3, v1, p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isExist for iMiSys20.IsExists:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz v5, :cond_1

    :try_start_3
    invoke-interface {v4, v1, p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " eraseResult:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    return v2
.end method

.method public static isFileExist(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->getService(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;->getService(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "WatermarkMiSysUtils"

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    :try_start_2
    const-string v3, "/mnt/vendor/persist/camera/"

    invoke-interface {v1, v3, p0}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isExist for iMiSys20.IsExists:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v2

    :cond_1
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get Misys Service. Don\'t know file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is exist or not."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static writeFileToPersist([BLjava/lang/String;)Z
    .locals 11

    const-string v0, "WatermarkMiSysUtils"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;->getService(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;->getService(Z)LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v5, v1

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    if-nez v5, :cond_0

    goto :goto_4

    :cond_0
    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_1

    aget-byte v6, p0, v4

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " byteData.size="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "/mnt/vendor/persist/camera/"

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long v9, p0

    move-object v7, p1

    invoke-interface/range {v5 .. v10}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeResult for iMiSys20.MiSysWriteBuffer:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    return v2

    :catch_2
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_3
    :goto_4
    return v1
.end method
