.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo0o;->OooO00o:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-boolean p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo0o;->OooO0O0:Z

    iput-object p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo0o;->OooO0OO:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo0o;->OooO00o:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iget-boolean v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo0o;->OooO0O0:Z

    iget-object v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo0/OooOo0o;->OooO0OO:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/camera/fragment/FragmentMainContent;->OooO00o(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V

    return-void
.end method
