.class public final synthetic Ljava8/util/stream/WhileOps$$Lambda$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/IntFunction;


# static fields
.field public static final instance:Ljava8/util/stream/WhileOps$$Lambda$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/WhileOps$$Lambda$2;

    invoke-direct {v0}, Ljava8/util/stream/WhileOps$$Lambda$2;-><init>()V

    sput-object v0, Ljava8/util/stream/WhileOps$$Lambda$2;->instance:Ljava8/util/stream/WhileOps$$Lambda$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/IntFunction;
    .locals 1

    sget-object v0, Ljava8/util/stream/WhileOps$$Lambda$2;->instance:Ljava8/util/stream/WhileOps$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava8/util/stream/WhileOps;->lambda$static$155(I)[Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
