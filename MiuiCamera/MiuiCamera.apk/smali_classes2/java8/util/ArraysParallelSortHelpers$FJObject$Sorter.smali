.class public final Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;
.super Ljava8/util/concurrent/CountedCompleter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sorter"
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


# static fields
.field public static final serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field public final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final base:I

.field public comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final gran:I

.field public final size:I

.field public final w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final wbase:I


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;[TT;[TT;IIII",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava8/util/concurrent/CountedCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    iput p4, p0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    iput p5, p0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    iput p6, p0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    iput p7, p0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    iput-object p8, p0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    iget-object v13, v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    iget-object v14, v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    iget v15, v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    iget v1, v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    iget v11, v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    iget v10, v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    move-object v8, v0

    move v9, v1

    :goto_0
    if-le v9, v10, :cond_0

    ushr-int/lit8 v16, v9, 0x1

    ushr-int/lit8 v17, v16, 0x1

    add-int v18, v16, v17

    new-instance v7, Ljava8/util/ArraysParallelSortHelpers$Relay;

    new-instance v6, Ljava8/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v19, v11, v16

    sub-int v20, v9, v16

    move-object v1, v6

    move-object v2, v8

    move-object v3, v14

    move-object v4, v13

    move v5, v11

    move-object v8, v6

    move/from16 v6, v16

    move-object v0, v7

    move/from16 v7, v19

    move-object/from16 v21, v14

    move-object v14, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move v9, v15

    move/from16 v22, v10

    move/from16 v23, v11

    move-object v11, v12

    invoke-direct/range {v1 .. v11}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    invoke-direct {v0, v14}, Ljava8/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    new-instance v14, Ljava8/util/ArraysParallelSortHelpers$Relay;

    new-instance v11, Ljava8/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v24, v15, v16

    add-int v25, v15, v18

    sub-int v20, v20, v18

    move-object v1, v11

    move-object v2, v0

    move-object v3, v13

    move-object/from16 v4, v21

    move/from16 v5, v24

    move/from16 v6, v17

    move/from16 v7, v25

    move/from16 v8, v20

    move/from16 v9, v19

    move-object/from16 v26, v0

    move-object v0, v11

    move-object v11, v12

    invoke-direct/range {v1 .. v11}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    invoke-direct {v14, v0}, Ljava8/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    new-instance v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v7, v23, v18

    move-object v1, v0

    move-object v2, v14

    move/from16 v5, v25

    move/from16 v6, v20

    move/from16 v8, v22

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    new-instance v0, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;

    move-object v1, v0

    move/from16 v5, v24

    move/from16 v6, v17

    move/from16 v7, v19

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    new-instance v0, Ljava8/util/ArraysParallelSortHelpers$Relay;

    new-instance v14, Ljava8/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v18, v15, v17

    sub-int v16, v16, v17

    move-object v1, v14

    move-object/from16 v2, v26

    move v5, v15

    move/from16 v7, v18

    move/from16 v8, v16

    move/from16 v9, v23

    invoke-direct/range {v1 .. v11}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    invoke-direct {v0, v14}, Ljava8/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    new-instance v10, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v7, v23, v17

    move-object v1, v10

    move-object v2, v0

    move/from16 v5, v18

    move/from16 v6, v16

    move/from16 v8, v22

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v10}, Ljava8/util/concurrent/ForkJoinTask;->fork()Ljava8/util/concurrent/ForkJoinTask;

    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$EmptyCompleter;

    invoke-direct {v8, v0}, Ljava8/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava8/util/concurrent/CountedCompleter;)V

    move-object/from16 v0, p0

    move/from16 v9, v17

    move-object/from16 v14, v21

    move/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_0

    :cond_0
    move/from16 v20, v9

    move/from16 v23, v11

    move-object/from16 v21, v14

    add-int v3, v15, v20

    move-object v1, v13

    move v2, v15

    move-object v4, v12

    move-object/from16 v5, v21

    move/from16 v6, v23

    move/from16 v7, v20

    invoke-static/range {v1 .. v7}, Ljava8/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    invoke-virtual {v8}, Ljava8/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method
