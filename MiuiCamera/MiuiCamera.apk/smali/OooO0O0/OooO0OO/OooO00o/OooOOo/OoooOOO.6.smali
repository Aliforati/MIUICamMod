.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo/OoooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/OoooOOO;->OooO00o:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo/OoooOOO;->OooO00o:[I

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o([ILcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
