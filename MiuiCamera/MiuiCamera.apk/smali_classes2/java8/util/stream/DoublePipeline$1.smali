.class public Ljava8/util/stream/DoublePipeline$1;
.super Ljava8/util/stream/ReferencePipeline$StatelessOp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline;->mapToObj(Ljava8/util/function/DoubleFunction;I)Ljava8/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReferencePipeline$StatelessOp<",
        "Ljava/lang/Double;",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Ljava8/util/stream/DoublePipeline;

.field public final synthetic val$mapper:Ljava8/util/function/DoubleFunction;


# direct methods
.method public constructor <init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleFunction;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$1;->this$0:Ljava8/util/stream/DoublePipeline;

    iput-object p5, p0, Ljava8/util/stream/DoublePipeline$1;->val$mapper:Ljava8/util/function/DoubleFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava8/util/stream/ReferencePipeline$StatelessOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "TU;>;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava8/util/stream/DoublePipeline$1$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/DoublePipeline$1$1;-><init>(Ljava8/util/stream/DoublePipeline$1;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
