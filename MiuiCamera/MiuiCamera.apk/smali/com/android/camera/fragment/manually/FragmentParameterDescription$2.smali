.class public Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentParameterDescription;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-static {p1}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->access$000(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-static {p1}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->access$100(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-lez p3, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/manually/FragmentParameterDescription$2;->this$0:Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-static {p1}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->access$100(Lcom/android/camera/fragment/manually/FragmentParameterDescription;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
