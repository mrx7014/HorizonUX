.class Lcom/samsung/android/ui/widget/SeslTooltip$1;
.super Ljava/lang/Object;
.source "SeslTooltip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslTooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslTooltip;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslTooltip;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/widget/SeslTooltip;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslTooltip$1;->this$0:Lcom/samsung/android/ui/widget/SeslTooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltip$1;->this$0:Lcom/samsung/android/ui/widget/SeslTooltip;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslTooltip;->hide()V

    .line 56
    return-void
.end method
