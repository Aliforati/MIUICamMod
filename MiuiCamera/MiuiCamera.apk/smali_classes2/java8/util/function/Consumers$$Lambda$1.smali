.class public final synthetic Ljava8/util/function/Consumers$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field public final arg$1:Ljava8/util/function/Consumer;

.field public final arg$2:Ljava8/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava8/util/function/Consumer;Ljava8/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/Consumers$$Lambda$1;->arg$1:Ljava8/util/function/Consumer;

    iput-object p2, p0, Ljava8/util/function/Consumers$$Lambda$1;->arg$2:Ljava8/util/function/Consumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Consumer;Ljava8/util/function/Consumer;)Ljava8/util/function/Consumer;
    .locals 1

    new-instance v0, Ljava8/util/function/Consumers$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/Consumers$$Lambda$1;-><init>(Ljava8/util/function/Consumer;Ljava8/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava8/util/function/Consumers$$Lambda$1;->arg$1:Ljava8/util/function/Consumer;

    iget-object v1, p0, Ljava8/util/function/Consumers$$Lambda$1;->arg$2:Ljava8/util/function/Consumer;

    invoke-static {v0, v1, p1}, Ljava8/util/function/Consumers;->lambda$andThen$160(Ljava8/util/function/Consumer;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
