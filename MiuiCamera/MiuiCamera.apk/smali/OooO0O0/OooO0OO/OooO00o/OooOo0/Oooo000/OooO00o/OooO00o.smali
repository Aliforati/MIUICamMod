.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field private final synthetic OooO0O0:Lcom/android/camera/protocol/ModeProtocol$CameraAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO00o;->OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO00o;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO00o;->OooO00o:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooO00o;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$CameraAction;)V

    return-void
.end method
