.class public Lcom/ss/android/vesdk/VEPreviewSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    }
.end annotation


# instance fields
.field public mCanvasSize:Lcom/ss/android/vesdk/VESize;

.field public mEnableAudioRecord:Z

.field public mIsAsyncDetection:Z

.field public mRenderSize:Lcom/ss/android/vesdk/VESize;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioRecord:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsAsyncDetection:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioRecord:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsAsyncDetection:Z

    return p1
.end method


# virtual methods
.method public getCanvasSize()Lcom/ss/android/vesdk/VESize;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCanvasSize:Lcom/ss/android/vesdk/VESize;

    return-object v0
.end method

.method public getRenderSize()Lcom/ss/android/vesdk/VESize;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object v0
.end method

.method public isAsyncDetection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsAsyncDetection:Z

    return v0
.end method

.method public isAudioRecordEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioRecord:Z

    return v0
.end method
