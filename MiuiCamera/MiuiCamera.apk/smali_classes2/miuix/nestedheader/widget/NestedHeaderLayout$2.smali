.class public Lmiuix/nestedheader/widget/NestedHeaderLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method public constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$202(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)Z

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const-string p1, "targe"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p2}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    invoke-static {p2, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V

    :cond_0
    return-void
.end method
