.class public Lmiuix/animation/internal/AnimRunner$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/internal/AnimRunner;->end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/animation/internal/AnimRunner;

.field public final synthetic val$properties:[Lmiuix/animation/property/FloatProperty;

.field public final synthetic val$target:Lmiuix/animation/IAnimTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/internal/AnimRunner;Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/internal/AnimRunner$3;->this$0:Lmiuix/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiuix/animation/internal/AnimRunner$3;->val$target:Lmiuix/animation/IAnimTarget;

    iput-object p3, p0, Lmiuix/animation/internal/AnimRunner$3;->val$properties:[Lmiuix/animation/property/FloatProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner$3;->val$target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getAnimTask()Lmiuix/animation/internal/AnimTask;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunner$3;->val$properties:[Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimTask;->end([Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method
