.class public final Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava8/util/concurrent/ForkJoinTask<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final ex:Ljava/lang/Throwable;

.field public final hashCode:I

.field public next:Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;

.field public final thrower:J


# direct methods
.method public constructor <init>(Ljava8/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava8/util/concurrent/ForkJoinTask<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p2, p0, Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    iput-object p3, p0, Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    iput-wide p2, p0, Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Ljava8/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    return-void
.end method
