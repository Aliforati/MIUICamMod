.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO;->OooO00o:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO;->OooO00o:Lcom/android/camera/Camera;

    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    check-cast p2, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/Camera;->OooO00o(Lcom/android/camera/module/loader/NullHolder;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    return-object p1
.end method
