.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoo/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/resource/BaseObservableRequest;

.field private final synthetic OooO0O0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/resource/BaseObservableRequest;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoo/OooO0OO;->OooO00o:Lcom/android/camera/resource/BaseObservableRequest;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoo/OooO0OO;->OooO0O0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoo/OooO0OO;->OooO00o:Lcom/android/camera/resource/BaseObservableRequest;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoo/OooO0OO;->OooO0O0:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/resource/BaseObservableRequest;->OooO00o(Ljava/lang/Class;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
