.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO00o$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO0oo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

.field public final synthetic OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;


# direct methods
.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;)V
    .locals 0

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO00o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o$OooO00o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;

    invoke-virtual {v1}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0OO/OooO0OO;->OooOO0()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;Z)V

    return-void
.end method
