.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo00;->OooO00o:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo00;->OooO00o:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentMainContent;->OooO00o(Landroid/widget/TextView;)V

    return-void
.end method
