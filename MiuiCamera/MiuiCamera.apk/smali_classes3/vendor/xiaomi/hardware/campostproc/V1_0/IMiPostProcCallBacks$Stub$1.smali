.class public Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$getOutputBufferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub$1;->this$0:Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub;

    iput-object p2, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/os/NativeHandle;I)V
    .locals 2

    iget-object v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    iget-object p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p1, p0, Lvendor/xiaomi/hardware/campostproc/V1_0/IMiPostProcCallBacks$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1}, Landroid/os/HwParcel;->send()V

    return-void
.end method
