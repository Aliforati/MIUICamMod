.class public Lcom/android/camera/fragment/GoogleLensFragment;
.super Landroid/app/DialogFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GoogleLensFragment"


# instance fields
.field public mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/GoogleLensFragment;->mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;

    return-void
.end method

.method public static showOptions(Landroid/app/FragmentManager;Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)Lcom/android/camera/fragment/GoogleLensFragment;
    .locals 2

    const-string v0, "GoogleLensFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/fragment/GoogleLensFragment;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/GoogleLensFragment;-><init>(Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;)V

    invoke-virtual {v1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v1

    :cond_0
    check-cast v1, Lcom/android/camera/fragment/GoogleLensFragment;

    return-object v1
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/fragment/GoogleLensFragment;->mClickListener:Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/android/camera/fragment/GoogleLensFragment$OnClickListener;->onOptionClick(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1005b8

    invoke-virtual {p1, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOoo0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOoo0;-><init>(Lcom/android/camera/fragment/GoogleLensFragment;)V

    const v1, 0x7f03000a

    invoke-virtual {p1, v1, v0}, Lmiui/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
