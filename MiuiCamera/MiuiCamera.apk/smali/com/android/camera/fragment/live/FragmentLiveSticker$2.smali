.class public Lcom/android/camera/fragment/live/FragmentLiveSticker$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSticker;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$2;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$2;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-virtual {p1, p3, p2}, Lcom/android/camera/fragment/live/FragmentLiveSticker;->onItemSelected(ILandroid/view/View;)V

    return-void
.end method
