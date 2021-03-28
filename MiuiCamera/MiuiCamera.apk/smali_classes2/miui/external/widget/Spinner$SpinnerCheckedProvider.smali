.class public Lmiui/external/widget/Spinner$SpinnerCheckedProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpinnerCheckedProvider"
.end annotation


# instance fields
.field public mSpinner:Lmiui/external/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiui/external/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/external/widget/Spinner$SpinnerCheckedProvider;->mSpinner:Lmiui/external/widget/Spinner;

    return-void
.end method


# virtual methods
.method public isChecked(I)Z
    .locals 1

    iget-object v0, p0, Lmiui/external/widget/Spinner$SpinnerCheckedProvider;->mSpinner:Lmiui/external/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
