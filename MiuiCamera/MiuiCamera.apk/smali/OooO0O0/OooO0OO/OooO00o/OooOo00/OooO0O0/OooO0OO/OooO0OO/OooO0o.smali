.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0OO/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

.field private final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0OO/OooO0o;->OooO00o:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0OO/OooO0o;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0OO/OooO0o;->OooO00o:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0OO/OooO0OO/OooO0o;->OooO0O0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->OooO00o(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList$MimojiDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
