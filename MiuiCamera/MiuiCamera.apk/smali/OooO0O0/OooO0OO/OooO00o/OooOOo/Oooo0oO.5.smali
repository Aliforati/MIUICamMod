.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0oO;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iput-boolean p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0oO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0oO;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget-boolean v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/Oooo0oO;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO0O0(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V

    return-void
.end method
