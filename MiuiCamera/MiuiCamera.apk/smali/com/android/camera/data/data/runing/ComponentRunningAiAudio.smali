.class public Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;
.super Lcom/android/camera/data/data/ComponentData;
.source ""


# static fields
.field public static final REC_TYPE_3D_RECORD:Ljava/lang/String; = "3d record"

.field public static final REC_TYPE_AUDIO_ZOOM:Ljava/lang/String; = "audio zoom"

.field public static final REC_TYPE_NORMAL:Ljava/lang/String; = "normal"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080231

    const v2, 0x7f1005f0

    const-string v3, "normal"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080230

    const v2, 0x7f1005ef

    const-string v3, "audio zoom"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08022f

    const v2, 0x7f1005ee

    const-string v3, "3d record"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCurrentParameters(IZI)Ljava/lang/String;
    .locals 5

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontDenoiseOn()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    move p2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result p2

    move v2, v1

    :goto_0
    if-eqz p3, :cond_5

    const/16 v3, 0x5a

    if-eq p3, v3, :cond_2

    const/16 v3, 0xb4

    if-eq p3, v3, :cond_4

    const/16 v3, 0x10e

    if-eq p3, v3, :cond_3

    :cond_2
    move p3, v1

    goto :goto_1

    :cond_3
    const/4 p3, 0x2

    goto :goto_1

    :cond_4
    const/4 p3, 0x3

    goto :goto_1

    :cond_5
    const/4 p3, 0x4

    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isWindDenoiseOn()Z

    move-result v3

    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroLensOn(I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, p2

    move v0, v3

    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SetAudioCustomScene=audioZoom@shot@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/scene@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/recType@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/wnd_ns@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    const-string p1, "SetAudioCustomScene="

    :goto_3
    return-object p1
.end method

.method public getCurrentRecType(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7d5a8740

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x3df94319

    if-eq v0, v1, :cond_1

    const v1, 0x58e46ddd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "3d record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    :cond_6
    :goto_2
    return v2
.end method

.method public getCurrentRecTypeStr(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7d5a8740

    const-string v2, "audio zoom"

    const-string v3, "3d record"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "normal"

    if-eq v0, v1, :cond_2

    const v1, -0x3df94319

    if-eq v0, v1, :cond_1

    const v1, 0x58e46ddd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    :cond_4
    move-object v2, v6

    goto :goto_2

    :cond_5
    move-object v2, v3

    :cond_6
    :goto_2
    return-object v2
.end method

.method public getCurrentStringRes(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;->getCurrentRecType(I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f1005ee

    goto :goto_0

    :cond_1
    const p1, 0x7f1005ef

    :goto_0
    return p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "normal"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f1004c2

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p1, "pref_ai_audio"

    return-object p1
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f080231

    return p1

    :cond_0
    const-string v0, "audio zoom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f080230

    return p1

    :cond_1
    const-string v0, "3d record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f08022f

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f1005f0

    return p1

    :cond_0
    const-string v0, "audio zoom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f1005ef

    return p1

    :cond_1
    const-string v0, "3d record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1005ee

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
