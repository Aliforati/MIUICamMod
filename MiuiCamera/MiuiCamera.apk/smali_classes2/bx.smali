.class public final Lbx;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "libcore.io.Memory"

    invoke-static {v0}, Lbx;->OooO00o(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbx;->a:Ljava/lang/Class;

    const-string v0, "org.robolectric.Robolectric"

    invoke-static {v0}, Lbx;->OooO00o(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lbx;->b:Z

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static OooO00o()Z
    .locals 1

    sget-object v0, Lbx;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-boolean v0, Lbx;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
