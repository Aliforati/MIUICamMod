.class public Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;
.super Lcom/android/camera/data/data/ComponentData;
.source ""


# instance fields
.field public mIsClosed:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "-1"

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "-1"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p1, "pref_eye_light_type_key"

    return-object p1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;->mIsClosed:Z

    return v0
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningEyeLight;->mIsClosed:Z

    return-void
.end method
