.class public Lmiuix/internal/log/appender/FileManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FILE_CHECK_INTERVAL:I = 0x3e8

.field public static final LOG_EXTENSION:Ljava/lang/String; = ".log"

.field public static final PREPARE_RETRY_INTERVAL:I = 0x7530

.field public static final RETRY_LIMIT:I = 0xa

.field public static final TAG:Ljava/lang/String; = "FileManager"


# instance fields
.field public mFileCheckStamp:J

.field public mLogFile:Ljava/io/File;

.field public mLogLength:J

.field public mLogName:Ljava/lang/String;

.field public mLogRoot:Ljava/lang/String;

.field public mOutputStream:Ljava/io/FileOutputStream;

.field public mPrepareRetryStamp:J

.field public mRetryCount:I

.field public mWriter:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    iput-object p2, p0, Lmiuix/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    return-void
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private doWrite(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J

    return-void
.end method

.method private prepareWriter()V
    .locals 6

    iget v0, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/internal/log/appender/FileManager;->mPrepareRetryStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mPrepareRetryStamp:J

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    invoke-virtual {p0}, Lmiuix/internal/log/appender/FileManager;->onCreateLogFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lmiuix/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to create writer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private repairWriter()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/internal/log/appender/FileManager;->close()V

    invoke-direct {p0}, Lmiuix/internal/log/appender/FileManager;->prepareWriter()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/internal/log/appender/FileManager;->mRetryCount:I

    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-static {v1}, Lmiuix/internal/log/appender/FileManager;->closeQuietly(Ljava/io/Writer;)V

    iput-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".log"

    return-object v0
.end method

.method public getLogFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    return-object v0
.end method

.method public getLogName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogRoot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSize()J
    .locals 2

    iget-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogLength:J

    return-wide v0
.end method

.method public onBuildLogPath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiuix/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLogFile()Ljava/io/File;
    .locals 7

    const-string v0, "Fail to create LogFile: "

    invoke-virtual {p0}, Lmiuix/internal/log/appender/FileManager;->onBuildLogPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "FileManager"

    if-nez v1, :cond_0

    const-string v0, "Fail to build log path"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogDir is not a directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to create directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogFile is not a file: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_4
    return-object v4

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/internal/log/appender/FileManager;->prepareWriter()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/internal/log/appender/FileManager;->mFileCheckStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iput-wide v0, p0, Lmiuix/internal/log/appender/FileManager;->mFileCheckStamp:J

    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FileManager"

    const-string v1, "Repair writer for log file is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lmiuix/internal/log/appender/FileManager;->repairWriter()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_2

    const-string p1, "FileManager"

    const-string v0, "Fail to append log for writer is null"

    :goto_1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lmiuix/internal/log/appender/FileManager;->doWrite(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "FileManager"

    const-string v2, "Retry to write log"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lmiuix/internal/log/appender/FileManager;->repairWriter()V

    iget-object v0, p0, Lmiuix/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_3

    const-string p1, "FileManager"

    const-string v0, "Fail to append log for writer is null when retry"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-direct {p0, p1}, Lmiuix/internal/log/appender/FileManager;->doWrite(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "FileManager"

    const-string v1, "Fail to append log for writer is null when retry"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
