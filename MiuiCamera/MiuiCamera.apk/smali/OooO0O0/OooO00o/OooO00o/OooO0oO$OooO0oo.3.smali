.class public LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "LOooO0O0/OooO00o/OooO00o/OooOOO<",
        "LOooO0O0/OooO00o/OooO00o/OooO0o;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0oo;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0oo;->OooO0O0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()LOooO0O0/OooO00o/OooO00o/OooOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0oo;->OooO00o:Ljava/lang/String;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0oo;->OooO0O0:Ljava/lang/String;

    invoke-static {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0oo;->call()LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    return-object v0
.end method
