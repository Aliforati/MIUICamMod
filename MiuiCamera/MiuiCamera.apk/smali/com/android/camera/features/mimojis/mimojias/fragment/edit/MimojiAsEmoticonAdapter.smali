.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;
.super Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$OnAllSelectStateChangeListener;,
        Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$EmoticonViewViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter<",
        "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mIsAllSelected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mRootView:Landroidx/recyclerview/widget/RecyclerView;

.field public onAllSelectStateChangeListener:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$OnAllSelectStateChangeListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;-><init>(Ljava/util/List;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->mIsAllSelected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private checkAllSelectedState()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->mIsAllSelected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->mIsAllSelected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->onAllSelectStateChangeListener:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$OnAllSelectStateChangeListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$OnAllSelectStateChangeListener;->onAllSelectStateChange(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public clearState()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->checkAllSelectedState()V

    :cond_1
    return-void
.end method

.method public getIsAllSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->mIsAllSelected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->mRootView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onCreateBaseRecyclerViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$EmoticonViewViewHolder;

    invoke-direct {p2, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$EmoticonViewViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->mRootView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public selectAll()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->checkAllSelectedState()V

    :cond_1
    return-void
.end method

.method public setOnAllSelectStateChangeListener(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$OnAllSelectStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->onAllSelectStateChangeListener:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$OnAllSelectStateChangeListener;

    return-void
.end method

.method public setSelectState(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->checkAllSelectedState()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->mRootView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$EmoticonViewViewHolder;

    if-eqz p2, :cond_2

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getName()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getName()I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f10034e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1000a7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    return-void
.end method
