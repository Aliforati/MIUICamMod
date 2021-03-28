.class public Lcom/xiaomi/Video2GifEditer/MediaComposeFile;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static TAG:Ljava/lang/String; = "MediaComposeFile"


# instance fields
.field public mComposeFile:J

.field public mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    return-void
.end method

.method public static native BeginComposeFileJni()V
.end method

.method public static native CancelComposeFileJni()V
.end method

.method public static native ConstructMediaComposeFileJni(JIIII)Z
.end method

.method public static native DestructMediaComposeFileJni()V
.end method

.method public static native SetComposeFileNameJni(Ljava/lang/String;)V
.end method

.method public static native SetComposeNotifyJni(Lcom/xiaomi/Video2GifEditer/EffectNotifier;)V
.end method


# virtual methods
.method public BeginComposeFile()V
    .locals 4

    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->mComposeFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->BeginComposeFileJni()V

    return-void
.end method

.method public CancelComposeFile()V
    .locals 4

    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->mComposeFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->CancelComposeFileJni()V

    return-void
.end method

.method public ConstructMediaComposeFile(IIII)Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    if-nez v0, :cond_0

    sget-object p1, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->TAG:Ljava/lang/String;

    const-string p2, "effect graph is null, failed!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;->GetGraphLine()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->ConstructMediaComposeFileJni(JIIII)Z

    sget-object p1, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "construct compose file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->mComposeFile:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public DestructMediaComposeFile()V
    .locals 4

    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destruct mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->mComposeFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->DestructMediaComposeFileJni()V

    return-void
.end method

.method public SetComposeFileName(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetComposeFileName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->SetComposeFileNameJni(Ljava/lang/String;)V

    return-void
.end method

.method public SetComposeNotify(Lcom/xiaomi/Video2GifEditer/EffectNotifier;)V
    .locals 4

    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetComposeNotify mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->mComposeFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->SetComposeNotifyJni(Lcom/xiaomi/Video2GifEditer/EffectNotifier;)V

    return-void
.end method

.method public SetMediaEffectGraph(Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/Video2GifEditer/MediaComposeFile;->mMediaEffectGraph:Lcom/xiaomi/Video2GifEditer/MediaEffectGraph;

    return-void
.end method
