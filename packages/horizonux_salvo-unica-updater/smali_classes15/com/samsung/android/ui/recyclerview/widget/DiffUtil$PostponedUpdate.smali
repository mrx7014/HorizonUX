.class Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "posInOwnerList"    # I
    .param p2, "currentPos"    # I
    .param p3, "removal"    # Z

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput p1, p0, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 524
    iput p2, p0, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 525
    iput-boolean p3, p0, Lcom/samsung/android/ui/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    .line 526
    return-void
.end method
