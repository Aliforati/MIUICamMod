.class public Ljava8/util/stream/ReferencePipeline$4$1;
.super Ljava8/util/stream/Sink$ChainedReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReferencePipeline$4;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Ljava8/util/stream/ReferencePipeline$4;


# direct methods
.method public constructor <init>(Ljava8/util/stream/ReferencePipeline$4;Ljava8/util/stream/Sink;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/ReferencePipeline$4$1;->this$1:Ljava8/util/stream/ReferencePipeline$4;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedReference;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/stream/Sink$ChainedReference;->downstream:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/ReferencePipeline$4$1;->this$1:Ljava8/util/stream/ReferencePipeline$4;

    iget-object v1, v1, Ljava8/util/stream/ReferencePipeline$4;->val$mapper:Ljava8/util/function/ToIntFunction;

    invoke-interface {v1, p1}, Ljava8/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava8/util/stream/Sink;->accept(I)V

    return-void
.end method
