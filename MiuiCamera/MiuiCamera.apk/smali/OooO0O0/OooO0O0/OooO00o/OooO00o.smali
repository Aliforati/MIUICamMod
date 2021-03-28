.class public LOooO0O0/OooO0O0/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO00o:Landroid/media/MediaPlayer;

.field public OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public OooO00o(Z)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public OooO0O0()Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public OooO0OO()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public OooO0Oo()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public OooO0o()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public OooO0o0()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public OooO0oO()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooO00o;->OooO00o:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
