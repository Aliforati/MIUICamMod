.class public Lcom/android/camera/fragment/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p2, p0, Lcom/android/camera/fragment/DefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Lcom/android/camera/fragment/DefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Lcom/android/camera/fragment/DefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Lcom/android/camera/fragment/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method
