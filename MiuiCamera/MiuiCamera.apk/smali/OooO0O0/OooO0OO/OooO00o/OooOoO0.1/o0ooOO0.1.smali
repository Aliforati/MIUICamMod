.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0ooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/VideoModule;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0ooOO0;->OooO00o:Lcom/android/camera/module/VideoModule;

    iput-boolean p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0ooOO0;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0ooOO0;->OooO00o:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0ooOO0;->OooO0O0:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->OooO0O0(Z)V

    return-void
.end method
