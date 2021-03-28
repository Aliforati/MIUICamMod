.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0o;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/Oooo000/OooO00o/OooOO0o;->OooO00o:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/bottom/action/Pickers;->OooO00o(ILandroid/view/View;)V

    return-void
.end method
