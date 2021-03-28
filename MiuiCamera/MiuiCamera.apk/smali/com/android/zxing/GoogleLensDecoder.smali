.class public Lcom/android/zxing/GoogleLensDecoder;
.super Lcom/android/zxing/Decoder;
.source ""


# instance fields
.field public mSensorOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/zxing/Decoder;-><init>()V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getSensorOrientation()I

    move-result p1

    iput p1, p0, Lcom/android/zxing/GoogleLensDecoder;->mSensorOrientation:I

    return-void
.end method

.method public isNeedImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needPreviewFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreviewFrame(Landroid/media/Image;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/zxing/Decoder;->onPreviewFrame(Landroid/media/Image;)V

    invoke-static {}, LOooO0O0/OooO0OO/OooO0OO/OooO0O0;->OooO0Oo()LOooO0O0/OooO0OO/OooO0OO/OooO0O0;

    move-result-object v0

    iget v1, p0, Lcom/android/zxing/GoogleLensDecoder;->mSensorOrientation:I

    invoke-virtual {v0, p1, v1}, LOooO0O0/OooO0OO/OooO0OO/OooO0O0;->OooO00o(Landroid/media/Image;I)V

    return-void
.end method

.method public onPreviewFrame(Lcom/android/zxing/PreviewImage;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public startDecode()V
    .locals 0

    return-void
.end method
