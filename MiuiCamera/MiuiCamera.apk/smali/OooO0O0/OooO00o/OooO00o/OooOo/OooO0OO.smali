.class public LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;

    invoke-direct {v0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;

    return-void
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;

    invoke-direct {v0, p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO00o()LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method

.method private OooO00o(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw p1
.end method

.method private OooO0O0()LOooO0O0/OooO00o/OooO00o/OooO0o;
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o()Landroidx/core/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    sget-object v3, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-static {v2, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-static {v0, v2}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/io/InputStream;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooO0o;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private OooO0O0(Ljava/net/HttpURLConnection;)LOooO0O0/OooO00o/OooO00o/OooOOO;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "application/json"

    :cond_0
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Handling zip response."

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO00o(Ljava/lang/String;)V

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o(Ljava/io/InputStream;LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "Received json response."

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO00o(Ljava/lang/String;)V

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o(Ljava/io/InputStream;LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/io/InputStream;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;

    invoke-virtual {v1, v0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0O0;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo/OooO00o;)V

    :cond_2
    return-object p1
.end method

.method private OooO0OO()LOooO0O0/OooO00o/OooO00o/OooOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0Oo()LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-direct {v1, v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private OooO0Oo()LOooO0O0/OooO00o/OooO00o/OooOOO;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO00o(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0(Ljava/net/HttpURLConnection;)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed fetch from network. Success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, LOooO0O0/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO00o(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_2
    :goto_1
    :try_start_1
    invoke-direct {p0, v0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO00o(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LOooO0O0/OooO00o/OooO00o/OooOOO;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to fetch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, LOooO0O0/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-direct {v2, v1}, LOooO0O0/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
.end method


# virtual methods
.method public OooO00o()LOooO0O0/OooO00o/OooO00o/OooOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0()LOooO0O0/OooO00o/OooO00o/OooO0o;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LOooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-direct {v1, v0}, LOooO0O0/OooO00o/OooO00o/OooOOO;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0Oo;->OooO00o(Ljava/lang/String;)V

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO0OO()LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    return-object v0
.end method
