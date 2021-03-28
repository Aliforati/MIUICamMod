.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0OoOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0OoOo0;->OooO00o:Lcom/android/camera/module/MiLiveModule;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0OoOo0;->OooO00o:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/MiLiveModule;->OooO00o(Lio/reactivex/FlowableEmitter;)V

    return-void
.end method
