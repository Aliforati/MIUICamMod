.class public final Ljava8/util/ArrayPrefixHelpers$CumulateTask;
.super Ljava8/util/concurrent/CountedCompleter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final fence:I

.field public final function:Ljava8/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final hi:I

.field public in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final lo:I

.field public final origin:I

.field public out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final threshold:I


# direct methods
.method public constructor <init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;[TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    sub-int/2addr p5, p4

    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    div-int/2addr p5, p1

    const/16 p1, 0x10

    if-gt p5, p1, :cond_0

    move p5, p1

    :cond_0
    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    return-void
.end method

.method public constructor <init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;[TT;IIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    iput p4, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p5, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p6, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    iput p7, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p8, p0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava8/util/function/BinaryOperator;

    if-eqz v10, :cond_1d

    iget-object v12, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    if-eqz v12, :cond_1d

    iget v13, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    iget v14, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iget v15, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    move-object v9, v0

    :goto_0
    iget v8, v9, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ltz v8, :cond_1c

    iget v7, v9, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    array-length v1, v12

    if-gt v7, v1, :cond_1c

    sub-int v1, v7, v8

    const/4 v2, 0x1

    if-le v1, v13, :cond_a

    iget-object v1, v9, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    iget-object v3, v9, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-nez v1, :cond_0

    add-int v1, v8, v7

    ushr-int/lit8 v16, v1, 0x1

    new-instance v6, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    move-object v1, v6

    move-object v2, v9

    move-object v3, v10

    move-object v4, v12

    move v5, v14

    move-object v11, v6

    move v6, v15

    move/from16 v17, v7

    move v7, v13

    move/from16 v18, v8

    move/from16 v8, v16

    move-object v0, v9

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v11, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    new-instance v9, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    move-object v1, v9

    move-object v2, v0

    move/from16 v8, v18

    move-object/from16 v19, v11

    move-object v11, v9

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v11, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    move-object v9, v11

    move-object/from16 v6, v19

    goto :goto_6

    :cond_0
    move/from16 v18, v8

    move-object v0, v9

    iget-object v0, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    iput-object v0, v1, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v2, v1, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move/from16 v4, v18

    if-ne v4, v14, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v10, v0, v2}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    iput-object v2, v3, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v3}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    or-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v0, v2}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x0

    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    move-object v1, v3

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    or-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    move-object v6, v3

    :goto_5
    if-nez v1, :cond_8

    goto/16 :goto_f

    :cond_8
    move-object v9, v1

    :goto_6
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    :cond_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_a
    move/from16 v17, v7

    move v4, v8

    move-object v0, v9

    :cond_b
    invoke-virtual {v0}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v1

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_c

    goto/16 :goto_f

    :cond_c
    and-int/lit8 v3, v1, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v3, :cond_d

    move v3, v6

    goto :goto_7

    :cond_d
    if-le v4, v14, :cond_e

    move v3, v5

    goto :goto_7

    :cond_e
    const/4 v3, 0x6

    :goto_7
    or-int v7, v1, v3

    invoke-virtual {v0, v1, v7}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eq v3, v5, :cond_10

    if-ne v4, v14, :cond_f

    aget-object v1, v12, v14

    add-int/lit8 v8, v14, 0x1

    goto :goto_8

    :cond_f
    iget-object v1, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move v8, v4

    :goto_8
    move/from16 v7, v17

    :goto_9
    if-ge v8, v7, :cond_12

    aget-object v4, v12, v8

    invoke-interface {v10, v1, v4}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    move/from16 v7, v17

    if-ge v7, v15, :cond_11

    aget-object v1, v12, v4

    add-int/lit8 v8, v4, 0x1

    :goto_a
    if-ge v8, v7, :cond_12

    aget-object v4, v12, v8

    invoke-interface {v10, v1, v4}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    iget-object v1, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    :cond_12
    iput-object v1, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    :goto_b
    move-object v9, v0

    :cond_13
    :goto_c
    invoke-virtual {v9}, Ljava8/util/concurrent/CountedCompleter;->getCompleter()Ljava8/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-nez v0, :cond_14

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_1c

    invoke-virtual {v9}, Ljava8/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto :goto_f

    :cond_14
    invoke-virtual {v0}, Ljava8/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v1

    and-int v4, v1, v3

    and-int/lit8 v7, v4, 0x4

    if-eqz v7, :cond_15

    goto :goto_b

    :cond_15
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1b

    iget-object v4, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-eqz v4, :cond_17

    iget-object v7, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    if-eqz v7, :cond_17

    iget-object v4, v4, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    iget v8, v7, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v8, v15, :cond_16

    goto :goto_d

    :cond_16
    iget-object v7, v7, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    invoke-interface {v10, v4, v7}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_d
    iput-object v4, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    :cond_17
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_18

    iget v4, v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v4, v14, :cond_18

    move v4, v2

    goto :goto_e

    :cond_18
    const/4 v4, 0x0

    :goto_e
    or-int v7, v1, v3

    or-int/2addr v7, v4

    if-eq v7, v1, :cond_19

    invoke-virtual {v0, v1, v7}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    :cond_1a
    move-object v9, v0

    move v3, v5

    goto :goto_c

    :cond_1b
    or-int v4, v1, v3

    invoke-virtual {v0, v1, v4}, Ljava8/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_1c
    :goto_f
    return-void

    :cond_1d
    const/4 v0, 0x0

    throw v0
.end method
