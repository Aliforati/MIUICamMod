.class public final synthetic LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

.field private final synthetic OooO0O0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;->OooO00o:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    iput-object p2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;->OooO0O0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;

    iput p3, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;->OooO00o:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    iget-object v1, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;->OooO0O0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;

    iget v2, p0, LOooO0O0/OooO0OO/OooO00o/OooOo00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooO0OO;->OooO0OO:I

    move-object v3, p1

    check-cast v3, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;->OooO00o(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRecyclerAdapter;ILcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;ILandroid/view/View;)V

    return-void
.end method
