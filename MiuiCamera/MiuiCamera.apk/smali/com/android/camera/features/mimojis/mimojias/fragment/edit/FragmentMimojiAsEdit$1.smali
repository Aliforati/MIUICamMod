.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->startMimojiEdit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

.field public final synthetic val$from:I


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$000(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$100(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/widget/MimojiAsEditGLTextureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;->val$from:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    move-result-object v0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEdit;)Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    move-result-object v0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->resetLayoutPosition(I)V

    return-void
.end method
