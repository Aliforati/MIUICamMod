.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooO0oO;->OooO00o:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final onAvailabilityStatusFetched(I)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooO0oO;->OooO00o:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->OooO0O0(I)V

    return-void
.end method
