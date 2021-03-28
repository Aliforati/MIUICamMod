.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0Oo0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/module/VideoBase$OnTagsListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/VideoModule;

.field private final synthetic OooO0O0:Lcom/android/camera/module/VideoBase$OnTagsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0Oo0oo;->OooO00o:Lcom/android/camera/module/VideoModule;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0Oo0oo;->OooO0O0:Lcom/android/camera/module/VideoBase$OnTagsListener;

    return-void
.end method


# virtual methods
.method public final onTagsReady(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0Oo0oo;->OooO00o:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOoO0/o0Oo0oo;->OooO0O0:Lcom/android/camera/module/VideoBase$OnTagsListener;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/module/VideoModule;->OooO00o(Lcom/android/camera/module/VideoBase$OnTagsListener;Ljava/util/List;)V

    return-void
.end method
