.class public Ljava8/util/stream/IntPipeline$3;
.super Ljava8/util/stream/DoublePipeline$StatelessOp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline;->asDoubleStream()Ljava8/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/DoublePipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Ljava8/util/stream/IntPipeline;


# direct methods
.method public constructor <init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/IntPipeline$3;->this$0:Ljava8/util/stream/IntPipeline;

    invoke-direct {p0, p2, p3, p4}, Ljava8/util/stream/DoublePipeline$StatelessOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava8/util/stream/IntPipeline$3$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/IntPipeline$3$1;-><init>(Ljava8/util/stream/IntPipeline$3;Ljava8/util/stream/Sink;)V

    return-object p1
.end method