.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItemInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOOOo;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/o00000Oo/OooOOOo;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method
