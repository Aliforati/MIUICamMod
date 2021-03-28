.class public Lcom/android/camera/aiaudio/AiAudioParameterManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUDIO_CAMERA_ZOOM_SUPPORT:Ljava/lang/String; = "audio_camera_zoom_support"

.field public static final AUDIO_CAMERA_ZOOM_TRUE:Ljava/lang/String; = "audio_camera_zoom_support=true"

.field public static final TAG:Ljava/lang/String; = "AiAudioParameterManager"


# instance fields
.field public final mAudioParaManager:Ljava/lang/Object;

.field public mEle:D


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaRecorder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mEle:D

    invoke-static {p1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/media/AudioParaManger;

    invoke-direct {v2, p2, p1}, Landroid/media/AudioParaManger;-><init>(Landroid/media/MediaRecorder;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mEle:D

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static isSupportAiAudioNew(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const-string v0, "audio_camera_zoom_support"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportAiAudioNew.isZoomSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audio_camera_zoom_support=true"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string p0, "android.media.AudioParaManger"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public getEleValue()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mEle:D

    return-wide v0
.end method

.method public init(ZIIIDDDDDZ)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    check-cast v1, Landroid/media/AudioParaManger;

    if-eqz p1, :cond_1

    move-object v2, v1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p15

    invoke-virtual/range {v2 .. v16}, Landroid/media/AudioParaManger;->init(IIIDDDDDZ)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    const/4 v15, 0x0

    move-object/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    move-wide/from16 p11, v11

    move-wide/from16 p13, v13

    move/from16 p15, v15

    invoke-virtual/range {p1 .. p15}, Landroid/media/AudioParaManger;->init(IIIDDDDDZ)Z

    move-result v1

    :goto_0
    sget-object v2, Lcom/android/camera/aiaudio/AiAudioParameterManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAiAudioParamerManager.isInit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0}, Landroid/media/AudioParaManger;->prepare()V

    return-void
.end method

.method public setAudioFocusAzimuth(D)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioParaManger;->setAudioFocusAzimuth(D)V

    return-void
.end method

.method public setAudioFocusElevation(D)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioParaManger;->setAudioFocusElevation(D)V

    return-void
.end method

.method public setAudioFocusHeight(D)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioParaManger;->setAudioFocusHeight(D)V

    return-void
.end method

.method public setAudioFocusWidth(D)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioParaManger;->setAudioFocusWidth(D)V

    return-void
.end method

.method public setAudioWindNoise(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1}, Landroid/media/AudioParaManger;->setAudioWindNoise(Z)V

    return-void
.end method

.method public setAudioZoomLevel(D)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioParaManger;->setAudioZoomLevel(D)V

    return-void
.end method

.method public setMaxSupportLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1}, Landroid/media/AudioParaManger;->setMaxSupportLevel(I)V

    return-void
.end method

.method public setRecordType(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1}, Landroid/media/AudioParaManger;->setRecordType(I)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/aiaudio/AiAudioParameterManager;->mAudioParaManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0}, Landroid/media/AudioParaManger;->start()V

    return-void
.end method
