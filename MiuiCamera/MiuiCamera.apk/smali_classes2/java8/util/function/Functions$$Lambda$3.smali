.class public final synthetic Ljava8/util/function/Functions$$Lambda$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final instance:Ljava8/util/function/Functions$$Lambda$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/function/Functions$$Lambda$3;

    invoke-direct {v0}, Ljava8/util/function/Functions$$Lambda$3;-><init>()V

    sput-object v0, Ljava8/util/function/Functions$$Lambda$3;->instance:Ljava8/util/function/Functions$$Lambda$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Function;
    .locals 1

    sget-object v0, Ljava8/util/function/Functions$$Lambda$3;->instance:Ljava8/util/function/Functions$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava8/util/function/Functions;->lambda$identity$136(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
