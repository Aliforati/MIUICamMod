.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/vv/FragmentVVPreview;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVPreview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooOO0o;->OooO00o:Lcom/android/camera/fragment/vv/FragmentVVPreview;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/o000oOoO/OooOO0o;->OooO00o:Lcom/android/camera/fragment/vv/FragmentVVPreview;

    check-cast p1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVPreview;->OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method
