.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentMasterFilter;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMasterFilter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo;->OooO00o:Lcom/android/camera/fragment/FragmentMasterFilter;

    iput p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo;->OooO00o:Lcom/android/camera/fragment/FragmentMasterFilter;

    iget v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo;->OooO0O0:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentMasterFilter;->OooO00o(I)V

    return-void
.end method
