.class public Lmiui/external/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/external/widget/Spinner$DropdownPopup;-><init>(Lmiui/external/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiui/external/widget/Spinner$DropdownPopup;

.field public final synthetic val$this$0:Lmiui/external/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiui/external/widget/Spinner$DropdownPopup;Lmiui/external/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->val$this$0:Lmiui/external/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object p1, p1, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object p1, p1, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object p4, p1, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    iget-object p1, p1, Lmiui/external/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    invoke-virtual {p1}, Lmiui/widget/ImmersionListPopupWindow;->dismiss()V

    return-void
.end method
