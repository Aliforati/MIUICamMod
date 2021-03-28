.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO0O0/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/data/observeable/VMResource;

.field private final synthetic OooO0O0:Lio/reactivex/ObservableEmitter;

.field private final synthetic OooO0OO:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/observeable/VMResource;Lio/reactivex/ObservableEmitter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO0O0/OooO0OO;->OooO00o:Lcom/android/camera/data/observeable/VMResource;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO0O0/OooO0OO;->OooO0O0:Lio/reactivex/ObservableEmitter;

    iput-object p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO0O0/OooO0OO;->OooO0OO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO0O0/OooO0OO;->OooO00o:Lcom/android/camera/data/observeable/VMResource;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO0O0/OooO0OO;->OooO0O0:Lio/reactivex/ObservableEmitter;

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOOo0/OooO0O0/OooO0OO;->OooO0OO:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/resource/BaseResourceItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/data/observeable/VMResource;->OooO00o(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lcom/android/camera/resource/BaseResourceItem;)V

    return-void
.end method
