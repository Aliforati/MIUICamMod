.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/o00000o0/OooO00o/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o00000o0/OooO00o/OooO0Oo;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o00000o0/OooO00o/OooO0Oo;->OooO00o:Z

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-static {v0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooO0OO(ZLcom/android/camera/module/BaseModule;)V

    return-void
.end method
