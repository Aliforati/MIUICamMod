.class public final Lio/reactivex/exceptions/CompositeException$WrappedPrintWriter;
.super Lio/reactivex/exceptions/CompositeException$PrintStreamOrWriter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WrappedPrintWriter"
.end annotation


# instance fields
.field public final printWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    iput-object p1, p0, Lio/reactivex/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
