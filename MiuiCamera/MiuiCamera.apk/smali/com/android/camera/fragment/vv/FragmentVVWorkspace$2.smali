.class public Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$400(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$200(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v2}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$300(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v3}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$300(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;->onScrollStateIdle(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)V

    return-void
.end method
