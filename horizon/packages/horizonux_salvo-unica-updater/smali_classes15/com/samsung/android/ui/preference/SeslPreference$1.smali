.class Lcom/samsung/android/ui/preference/SeslPreference$1;
.super Ljava/lang/Object;
.source "SeslPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/preference/SeslPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/SeslPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/SeslPreference;

    .line 132
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreference$1;->this$0:Lcom/samsung/android/ui/preference/SeslPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreference$1;->this$0:Lcom/samsung/android/ui/preference/SeslPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/preference/SeslPreference;->performClick(Landroid/view/View;)V

    .line 135
    return-void
.end method
